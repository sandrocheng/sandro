.class Lcom/avast/android/mobilesecurity/app/locking/core/d;
.super Landroid/os/AsyncTask;
.source "AppLockingService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

.field private final b:Ljava/util/regex/Pattern;

.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/util/regex/Pattern;

.field private final f:Ljava/text/SimpleDateFormat;

.field private g:Landroid/content/Context;

.field private h:Lcom/avast/android/mobilesecurity/app/locking/core/e;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    const-string v0, "act=([^ ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->b:Ljava/util/regex/Pattern;

    .line 308
    const-string v0, "cmp=([^} ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->c:Ljava/util/regex/Pattern;

    .line 309
    const-string v0, "dat=([^} ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->d:Ljava/util/regex/Pattern;

    .line 310
    const-string v0, "([^ ]+)/([^: ]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->e:Ljava/util/regex/Pattern;

    .line 312
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->f:Ljava/text/SimpleDateFormat;

    .line 319
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->g:Landroid/content/Context;

    .line 320
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter

    .prologue
    const/16 v13, 0x12

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 324
    .line 326
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "logcat -v time ActivityManager:I WindowManager:I *:S"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 328
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 330
    new-instance v2, Lcom/avast/android/mobilesecurity/app/locking/core/e;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->h:Lcom/avast/android/mobilesecurity/app/locking/core/e;

    .line 331
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->h:Lcom/avast/android/mobilesecurity/app/locking/core/e;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 333
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 339
    const-string v0, "android.intent.action.DELETE dat="

    .line 340
    const-string v0, "android.intent.action.UNINSTALL_PACKAGE dat="

    move v0, v4

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_e

    .line 344
    if-nez v0, :cond_11

    .line 348
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v13, :cond_0

    .line 351
    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 353
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setYear(I)V

    .line 354
    invoke-virtual {v2, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    move v4, v5

    .line 370
    :goto_1
    :try_start_2
    const-string v0, "android.intent.action.DELETE dat="

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE dat="

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    :cond_1
    new-instance v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/app/locking/core/App;-><init>()V

    .line 373
    sget-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->k:Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    .line 376
    const/4 v0, 0x1

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    .line 377
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->h:Ljava/lang/String;

    .line 379
    const-string v0, ".UninstallerActivity"

    const-string v3, "android.intent.action.DELETE"

    invoke-virtual {v2, v0, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->publishProgress([Ljava/lang/Object;)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 385
    const-string v0, "Starting"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "START"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    const-string v0, "ActivityManager"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 395
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 396
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 398
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 400
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 401
    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v2

    move v4, v0

    goto/16 :goto_1

    .line 378
    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    move-object v3, v1

    .line 398
    goto :goto_3

    .line 404
    :cond_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 406
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 407
    goto/16 :goto_0

    :cond_7
    move-object v2, v1

    .line 404
    goto :goto_4

    .line 410
    :cond_8
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 411
    array-length v10, v0

    if-ge v10, v12, :cond_9

    move v0, v4

    .line 412
    goto/16 :goto_0

    .line 414
    :cond_9
    const/4 v10, 0x0

    aget-object v10, v0, v10

    .line 415
    const/4 v11, 0x1

    aget-object v11, v0, v11

    .line 416
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 419
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v2, v10}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_a

    .line 421
    invoke-virtual {v2, v11, v3, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "ApplockingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found app by ActivityManager Starting|START string: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", component name is: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->publishProgress([Ljava/lang/Object;)V

    .line 433
    :cond_a
    const-string v0, "Displayed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 437
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->e:Ljava/util/regex/Pattern;

    const-string v2, "Displayed"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 440
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 441
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v3, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v3

    .line 443
    if-eqz v3, :cond_b

    .line 444
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v9, "ApplockingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found app by Displayed string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", component name is: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->publishProgress([Ljava/lang/Object;)V

    .line 458
    :cond_b
    const-string v0, "createSurface"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 462
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->e:Ljava/util/regex/Pattern;

    const-string v2, "createSurface"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 465
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 466
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v3, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v3

    .line 468
    if-eqz v3, :cond_c

    .line 469
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v8, "ApplockingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found app by createSurface string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", component name is: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_c
    move v0, v4

    .line 478
    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    .line 416
    goto/16 :goto_5

    .line 481
    :catch_1
    move-exception v0

    .line 483
    :cond_e
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->h:Lcom/avast/android/mobilesecurity/app/locking/core/e;

    if-eqz v0, :cond_f

    .line 484
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->h:Lcom/avast/android/mobilesecurity/app/locking/core/e;

    invoke-virtual {v0, v5}, Lcom/avast/android/mobilesecurity/app/locking/core/e;->cancel(Z)Z

    .line 486
    :cond_f
    const-string v0, "ApplockingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackgroud task ended, canceled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->isCancelled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-object v1

    :cond_10
    move v0, v4

    goto/16 :goto_0

    :cond_11
    move v4, v0

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->g:Landroid/content/Context;

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/core/d;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->g:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/d;-><init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Lcom/avast/android/mobilesecurity/app/locking/core/d;)Lcom/avast/android/mobilesecurity/app/locking/core/d;

    .line 502
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->b(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Lcom/avast/android/mobilesecurity/app/locking/core/d;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 503
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->h:Lcom/avast/android/mobilesecurity/app/locking/core/e;

    .line 504
    const-string v0, "ApplockingService"

    const-string v1, "finish LogScannerTask and restart it"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v0, "ApplockingService"

    const-string v1, "finish LogScannerTask, logcat not available"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected varargs a([Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 512
    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v3

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v0, "ApplockingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found app start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    aget-object v1, p1, v3

    .line 521
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 523
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ab()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ah()Z

    move-result v0

    if-nez v0, :cond_4

    .line 527
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->cancel(Z)Z

    goto :goto_0

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Lcom/avast/android/mobilesecurity/app/locking/core/App;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 494
    const-string v0, "ApplockingService"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->stopSelf()V

    .line 496
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    check-cast p1, [Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->a([Lcom/avast/android/mobilesecurity/app/locking/core/App;)V

    return-void
.end method
