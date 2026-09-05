# Kassa - namoyish versiyasi

Savdo nuqtasi (POS) tizimining ishlaydigan namoyish versiyasi.
Flutter Web'da yozilgan, brauzerda ishlaydi.

**Parol: `1234`** - kirish ekranida ham yozib qo'yilgan.

## Nima qilish mumkin

- Stolga buyurtma ochish, mahsulot qo'shish, sonini o'zgartirish
- Chegirma qo'llash, naqd / karta / onlayn to'lov, qaytimni hisoblash
- Stolni yopish va chekni ko'rish
- Kunlik hisobot: tushum, cheklar soni, to'lov turlari bo'yicha taqsimot
- Menyuni boshqarish: kategoriya va mahsulot qo'shish, tahrirlash, o'chirish
- Stollarni boshqarish: qo'shish, zonaga ajratish, bir vaqtda bir nechtasini
  qo'shish

## Namoyish rejimi haqida

- Ma'lumot faqat sizning brauzeringizda turadi, hech qayerga yuborilmaydi
- **Sahifa har yangilanganda demo toza holatga qaytadi** - shunda har bir
  mehmon to'liq va tartibli kassani ko'radi
- Kirish uchun ro'yxatdan o'tish yoki hisob kerak emas

## Ishga tushirish

```bash
flutter pub get
flutter run -d chrome
```

Tayyor versiyani yig'ish:

```bash
flutter build web --release
```

## Loyiha tuzilishi

```
lib/
  main.dart                    kirish nuqtasi
  src/
    models.dart                stol, buyurtma, chek, sozlama
    store.dart                 barcha holat va biznes mantiq
    theme.dart                 ranglar va umumiy uslub
    icons.dart                 mahsulot belgilari
    utils.dart                 summa/sana formatlash
    data/
      receipt_db.dart          cheklar arxivi (IndexedDB)
    screens/
      login_screen.dart        parol kiritish
      home_screen.dart         asosiy oyna va navigatsiya
      tables_page.dart         stollar
      order_screen.dart        buyurtma va to'lov
      menu_page.dart           menyu boshqaruvi
      history_page.dart        hisobot
      settings_page.dart       sozlamalar
    widgets/                   umumiy vidjetlar
test/                          28 ta test
```

## Texnologiyalar

Flutter Web, Material 3, IndexedDB, localStorage.
Tashqi bog'liqlik minimal - hech qanday backend yoki hisob talab qilinmaydi.
