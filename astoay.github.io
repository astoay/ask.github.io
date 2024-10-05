html
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🤍</title> <!-- Sayfa ismi değiştirildi -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400&display=swap" rel="stylesheet"> <!-- Google Fonts -->
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #87CEEB; /* Gökyüzü mavisi */
            color: white; /* Yazı rengi beyaz yapıldı */
            font-size: 48px; /* Yazı boyutu */
            font-family: 'Oswald', sans-serif; /* Dramatik yazı tipi */
            text-align: center; /* Merkezde hizala */
        }
        #message {
            margin-top: 20px; /* Mesaj ile yüzde arasına boşluk */
            font-size: 36px; /* Mesaj yazı boyutu */
            visibility: hidden; /* Başlangıçta görünmez yap */
        }
    </style>
    <script>
        window.onload = function() {
            // "html" kelimesini kaldır
            const htmlText = document.body.innerHTML;
            document.body.innerHTML = htmlText.replace(/html/g, '');
        };
    </script>
</head>
<body>
    <div id="heart">🤍</div> <!-- Beyaz kalp emojisi -->
    <div id="percentage">%0.000000</div> <!-- Yüzde gösterimi -->
    <div id="message">Şimdi en güzel günlerimize hazır mısın?</div> <!-- Mesaj -->

    <script>
        // Başlangıç ve bitiş tarihlerini belirle
        const startDate = new Date('2024-09-18T08:52:00'); // Başlangıç tarihi
        const endDate = new Date('2027-09-18T23:59:59'); // Bitiş tarihi

        function updatePercentage() {
            const now = new Date(); // Şu anki tarih
            const totalDuration = endDate - startDate; // Toplam süre (ms)
            const elapsedDuration = now - startDate; // Geçen süre (ms)
            
            // Yüzdeyi hesapla
            let percentage = (elapsedDuration / totalDuration) * 100;
            percentage = Math.min(Math.max(percentage, 0), 100); // 0-100 arası sınırla

            // Yüzdeyi 6 haneli formatta güncelle
            document.getElementById('percentage').innerText = percentage.toFixed(6) + '%';

            // Geri sayım tamamlandığında mesajı göster
            if (percentage >= 100) {
                clearInterval(interval);
                document.getElementById('message').style.visibility = 'visible'; // Mesajı görünür yap
            }
        }

        // İlk güncellemeyi yap
        updatePercentage();

        // Her 100 milisaniyede bir güncelle
        const interval = setInterval(updatePercentage, 100);
    </script>
</body>
</html>
