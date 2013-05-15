.class Lcom/avast/android/mobilesecurity/app/locking/core/e;
.super Landroid/os/AsyncTask;
.source "AppLockingService.java"


# instance fields
.field private final a:Ljava/util/regex/Pattern;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 562
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 548
    const-string v0, "open\\s*log.*/dev/log/main.*[Nn]o\\s*such\\s*(file|directory)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/e;->a:Ljava/util/regex/Pattern;

    .line 563
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/e;->b:Landroid/content/Context;

    .line 564
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/InputStream;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    .line 569
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 570
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 574
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/e;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 576
    const-string v2, "/dev/log/main"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/e;->b:Landroid/content/Context;

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->a(Z)V

    .line 583
    const-string v0, "setting logcat as not available"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 541
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/e;->a([Ljava/io/InputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
