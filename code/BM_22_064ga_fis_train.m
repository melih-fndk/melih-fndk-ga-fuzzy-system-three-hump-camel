clc; clear;

% 1) Eğitim verisi
TrainData = readmatrix("BM_22_064_Train.xlsx");
X = TrainData(:,1:2);
Y = TrainData(:,3);

% 2) GA ayarları
popSize = 5;
nGenes  = 9;
geneMin = 0; geneMax = 200;

Pc = 0.8;   % crossover olasılığı
Pm = 0.1;   % mutasyon olasılığı (gen bazlı)

% 3) Başlangıç popülasyonu (5x9)
pop = geneMin + (geneMax-geneMin).*rand(popSize,nGenes);

for iter = 1:2
    fprintf("\n=== ITERATION %d ===\n", iter);

    % 4) Fitness (MAE)
    MAE = zeros(popSize,1);
    fit = zeros(popSize,1);

    for i=1:popSize
        c = pop(i,:);

        % Burada: c kullanarak FIS tahmini üretmen gerekir.
        % ÖDEVİN EN KRİTİK YERİ: y_pred = evalfis(fis, X) gibi.
        % Eğer fis kurduysan:
        % y_pred = evalfis(fis, X);

        % Şimdilik iskelet:
        y_pred = dummyPredict(X, c); % SEN bunu gerçek FIS hesabına bağlayacaksın

        MAE(i) = mean(abs(Y - y_pred));
        fit(i) = 1/(1+MAE(i));
    end

    % 5) Rulet olasılık
    p = fit./sum(fit);
    cumP = cumsum(p);

    % 6) Seçim
    mating = zeros(size(pop));
    for k=1:popSize
        r = rand();
        idx = find(cumP >= r, 1, "first");
        mating(k,:) = pop(idx,:);
    end

    % 7) Çaprazlama (tek nokta)
    newPop = mating;
    cp = randi([2 nGenes-1]); % kesme noktası
    for k=1:2:popSize-1
        if rand() < Pc
            p1 = newPop(k,:);
            p2 = newPop(k+1,:);
            newPop(k,:)   = [p1(1:cp) p2(cp+1:end)];
            newPop(k+1,:) = [p2(1:cp) p1(cp+1:end)];
        end
    end

    % 8) Mutasyon (gen bazlı)
    for i=1:popSize
        for g=1:nGenes
            if rand() < Pm
                newPop(i,g) = newPop(i,g) + 10*randn(); % küçük oynatma
                newPop(i,g) = min(max(newPop(i,g), geneMin), geneMax);
            end
        end
    end

    pop = newPop;

    % rapor için yazdır
    disp("MAE:"); disp(MAE');
    disp("pop:"); disp(pop);
end

function y = dummyPredict(X, c)
% Bu fonksiyonu SİLİP yerine evalfis tabanlı gerçek tahmin koyacaksın.
% Burada sadece kod iskeleti bozulmasın diye var.
y = ones(size(X,1),1)*mean(c);
end
