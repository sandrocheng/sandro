.class public Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "OnekeyCallSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:I = 0x1

.field private static final j:[Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lcom/keniu/security/commumgr/p;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:Landroid/os/Handler;

.field private h:Lcom/keniu/security/commumgr/r;

.field private i:Lcom/keniu/security/commumgr/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content://com.android.launcher.settings/favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content://com.android.launcher2.settings/favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content://com.sec.android.app.twlauncher.settings/favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content://com.htc.launcher.settings/favorites"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 564
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 206
    .line 209
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "intent"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "icon"

    aput-object v3, v2, v0

    const-string v3, "itemType=0 or itemType=1 or itemType=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method private a(Lcom/ijinshan/kinghelper/common/ContactItem;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter

    .prologue
    const/4 v7, 0x1

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 371
    iget-object v0, p1, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p1, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    iget-object v3, p1, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    array-length v3, v3

    invoke-static {v0, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    .line 376
    :goto_0
    if-nez v3, :cond_2

    .line 379
    const v0, 0x7f0200ba

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 380
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 382
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 383
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v11

    .line 439
    :goto_2
    return-object v0

    .line 393
    :cond_0
    const/high16 v3, 0x105

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 394
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 395
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 399
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 400
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 401
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10, v10, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 403
    invoke-virtual {v5, v0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 406
    iget v0, p1, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v11

    .line 429
    :goto_3
    if-eqz v0, :cond_1

    .line 431
    new-instance v3, Landroid/graphics/Paint;

    const/16 v6, 0x101

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 432
    const/high16 v6, 0x41a0

    mul-float/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 433
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 434
    const v6, 0x7f090051

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    const/high16 v6, 0x4040

    const v7, 0x7f090052

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v6, v12, v12, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 436
    const/high16 v1, 0x4000

    mul-float/2addr v1, v2

    const/high16 v6, 0x4180

    mul-float/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    move-object v0, v4

    .line 439
    goto :goto_2

    .line 409
    :pswitch_1
    const v0, 0x7f0b073a

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 413
    :pswitch_2
    const v0, 0x7f0b073b

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 417
    :pswitch_3
    const v0, 0x7f0b073c

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 421
    :pswitch_4
    const v0, 0x7f0b073d

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 425
    :pswitch_5
    const v0, 0x7f0b073e

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    goto/16 :goto_1

    :cond_3
    move-object v3, v11

    goto/16 :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    :goto_0
    if-nez v0, :cond_2

    .line 282
    :goto_1
    return-void

    :cond_0
    move v1, v2

    move-object v2, v9

    .line 226
    :goto_2
    sget-object v3, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 228
    sget-object v2, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_1

    .line 231
    sget-object v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    move-object v0, v2

    .line 232
    goto :goto_0

    .line 226
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    :try_start_0
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 245
    const-string v2, "intent"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 246
    const-string v3, "icon"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 249
    :goto_3
    if-eqz v4, :cond_5

    .line 250
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_3

    .line 252
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_3

    .line 254
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 261
    if-eqz v6, :cond_6

    .line 262
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 264
    if-eqz v6, :cond_6

    .line 265
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v7

    .line 269
    :goto_5
    iget-object v7, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v7, v6, v5, v4}, Lcom/keniu/security/commumgr/p;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_3

    :cond_4
    move-object v4, v9

    .line 254
    goto :goto_4

    :catch_0
    move-exception v1

    .line 281
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_6
    move-object v6, v9

    goto :goto_5

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/commumgr/k;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/k;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 347
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move v1, v3

    .line 185
    :goto_0
    sget-object v2, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 187
    sget-object v2, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v0, 0x1

    .line 195
    :goto_1
    return v0

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 195
    goto :goto_1
.end method

.method private b()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 286
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 291
    iget-wide v2, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->f:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 296
    iput-wide v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->f:J

    .line 297
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/p;->a()V

    .line 298
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "intent"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "icon"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v7

    :goto_4
    iget-object v7, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v7, v6, v5, v4}, Lcom/keniu/security/commumgr/p;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    :cond_3
    move v1, v9

    move-object v2, v10

    :goto_5
    sget-object v3, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    sget-object v2, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->j:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d:Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move-object v4, v10

    goto :goto_3

    :catch_0
    move-exception v1

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_7
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    const v1, 0x7f0800ad

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v2}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v2

    if-eqz v2, :cond_9

    .line 303
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 304
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_6
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_8

    iget v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    if-ne v0, v11, :cond_8

    .line 311
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    .line 314
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v9}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 316
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 317
    const v1, 0x7f0b0700

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 318
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 320
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/l;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/l;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 331
    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/m;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/m;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/p;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 306
    :cond_9
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_a
    move-object v6, v10

    goto/16 :goto_4

    :cond_b
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 23
    .parameter

    .prologue
    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 444
    if-nez v5, :cond_1

    .line 489
    :cond_0
    return-void

    .line 448
    :cond_1
    const/4 v6, 0x0

    .line 449
    const-string v7, "contacts"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 450
    if-eqz v7, :cond_0

    .line 452
    const/4 v5, 0x0

    move v8, v6

    move v6, v5

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 454
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ijinshan/kinghelper/common/ContactItem;

    .line 455
    if-eqz p1, :cond_8

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v5, v9}, Lcom/keniu/security/commumgr/p;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 458
    const v5, 0x7f0b06fc

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v8

    .line 452
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v8, v5

    goto :goto_0

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    move v5, v0

    if-nez v5, :cond_3

    .line 466
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    .line 472
    :cond_3
    const-string v5, "tel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 473
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL"

    invoke-direct {v9, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 475
    new-instance v10, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    const-string v11, "android.intent.extra.shortcut.ICON"

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v13, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v14, v0

    if-eqz v14, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v5, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v15, v0

    array-length v15, v15

    invoke-static {v5, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v14, v5

    :goto_2
    if-nez v14, :cond_6

    const v5, 0x7f0200ba

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v15, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_6

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_3
    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v10, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    const-string v5, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->a:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v10, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    add-int/lit8 v5, v8, 0x1

    .line 484
    mul-int/lit16 v8, v5, 0x3e8

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    goto/16 :goto_1

    .line 477
    :cond_4
    const/high16 v14, 0x105

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v14

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    move v14, v0

    packed-switch v14, :pswitch_data_0

    :goto_5
    :pswitch_0
    if-eqz v5, :cond_5

    new-instance v14, Landroid/graphics/Paint;

    const/16 v17, 0x101

    move-object v0, v14

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v17, 0x41a0

    mul-float v17, v17, v13

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v17, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v17, 0x7f090051

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v17, 0x4040

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    const v20, 0x7f090052

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v12, 0x4000

    mul-float/2addr v12, v13

    const/high16 v17, 0x4180

    mul-float v13, v13, v17

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v12

    move v3, v13

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    move-object v5, v15

    goto/16 :goto_4

    :pswitch_1
    const v5, 0x7f0b073a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :pswitch_2
    const v5, 0x7f0b073b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :pswitch_3
    const v5, 0x7f0b073c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :pswitch_4
    const v5, 0x7f0b073d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :pswitch_5
    const v5, 0x7f0b073e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :cond_6
    move-object v5, v14

    goto/16 :goto_3

    :cond_7
    move-object v14, v5

    goto/16 :goto_2

    :cond_8
    move v5, v8

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_onekeycall_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    return-void
.end method

.method static synthetic c(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V
    .locals 7
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v1

    move v3, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1, v2}, Lcom/keniu/security/commumgr/p;->c(I)Z

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "num"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->a(I)Z

    add-int/lit8 v0, v3, 0x1

    mul-int/lit16 v1, v0, 0x3e8

    invoke-direct {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 492
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v0

    .line 493
    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 494
    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commumgr/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 500
    :goto_1
    return v0

    .line 493
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 7

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v1

    .line 507
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v1

    move v3, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 508
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 512
    if-eqz v0, :cond_1

    .line 514
    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1, v2}, Lcom/keniu/security/commumgr/p;->c(I)Z

    .line 516
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "num"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commumgr/p;->a(I)Z

    .line 519
    add-int/lit8 v0, v3, 0x1

    .line 520
    mul-int/lit16 v1, v0, 0x3e8

    invoke-direct {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    .line 507
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v3, v0

    goto :goto_0

    .line 524
    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/p;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commumgr/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    .line 529
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 530
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 531
    const v1, 0x7f0b0702

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 532
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 534
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/n;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/n;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 542
    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/o;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/o;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 548
    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 550
    :cond_0
    return-void

    .line 528
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-super/range {p0 .. p3}, Lcom/keniu/security/main/BaseTitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 555
    packed-switch p1, :pswitch_data_0

    .line 562
    :cond_0
    return-void

    .line 557
    :pswitch_0
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    const-string v7, "contacts"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ijinshan/kinghelper/common/ContactItem;

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/keniu/security/commumgr/p;->a(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const v8, 0x7f0b06fc

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    move v8, v0

    if-nez v8, :cond_3

    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    :cond_3
    const-string v8, "tel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL"

    invoke-direct {v9, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v14, v0

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B

    move-object v15, v0

    array-length v15, v15

    invoke-static {v13, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    :cond_4
    if-nez v13, :cond_5

    const v14, 0x7f0200ba

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move v14, v0

    if-eqz v14, :cond_5

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    :cond_5
    if-nez v13, :cond_6

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->a:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v7, v7, 0x1

    mul-int/lit16 v8, v7, 0x3e8

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    goto/16 :goto_1

    :cond_6
    const/high16 v14, 0x105

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v14

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    move v14, v0

    packed-switch v14, :pswitch_data_1

    :goto_3
    :pswitch_1
    if-eqz v13, :cond_7

    new-instance v14, Landroid/graphics/Paint;

    const/16 v17, 0x101

    move-object v0, v14

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v17, 0x41a0

    mul-float v17, v17, v12

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v17, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v17, 0x7f090051

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v17, 0x4040

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    const v20, 0x7f090052

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/high16 v11, 0x4000

    mul-float/2addr v11, v12

    const/high16 v17, 0x4180

    mul-float v12, v12, v17

    move-object/from16 v0, v16

    move-object v1, v13

    move v2, v11

    move v3, v12

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    move-object v11, v15

    goto/16 :goto_2

    :pswitch_2
    const v13, 0x7f0b073a

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :pswitch_3
    const v13, 0x7f0b073b

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :pswitch_4
    const v13, 0x7f0b073c

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :pswitch_5
    const v13, 0x7f0b073d

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    :pswitch_6
    const v13, 0x7f0b073e

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 558
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_onekeycall_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0702

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/n;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/n;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0b021a

    invoke-virtual {p0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/commumgr/o;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/o;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/ap;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f0800ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, -0x3e8

    .line 64
    invoke-super {p0, p1}, Lcom/keniu/security/main/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "telman_onekey"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_0
    const v0, 0x7f030019

    const v1, 0x7f0b00f6

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 72
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b:Landroid/widget/ListView;

    .line 77
    new-instance v0, Lcom/keniu/security/commumgr/p;

    invoke-direct {v0, p0, p0}, Lcom/keniu/security/commumgr/p;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    .line 78
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->c:Lcom/keniu/security/commumgr/p;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->f:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->e:I

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->g:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 88
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 92
    new-instance v2, Lcom/keniu/security/commumgr/r;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/r;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    iput-object v2, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->h:Lcom/keniu/security/commumgr/r;

    .line 93
    new-instance v2, Lcom/keniu/security/commumgr/r;

    invoke-direct {v2, p0}, Lcom/keniu/security/commumgr/r;-><init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    iput-object v2, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->i:Lcom/keniu/security/commumgr/r;

    .line 95
    iget-object v2, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->h:Lcom/keniu/security/commumgr/r;

    invoke-virtual {p0, v2, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->i:Lcom/keniu/security/commumgr/r;

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-direct {p0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b()V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->h:Lcom/keniu/security/commumgr/r;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->h:Lcom/keniu/security/commumgr/r;

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->i:Lcom/keniu/security/commumgr/r;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->i:Lcom/keniu/security/commumgr/r;

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onResume()V

    .line 146
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->a(I)V

    .line 147
    return-void
.end method
