.class public Lcom/avast/android/mobilesecurity/app/account/e;
.super Ljava/lang/Object;
.source "AntivirusActivityHelper.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/e;->a:Landroid/content/ContentResolver;

    .line 122
    return-void
.end method

.method static synthetic a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/account/e;->b()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 149
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 153
    return-object v0
.end method


# virtual methods
.method public a(IILcom/avast/android/generic/internet/c/a/av;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/f;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/e;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p3}, Lcom/avast/android/mobilesecurity/app/account/f;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/internet/c/a/av;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/account/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/av;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/g;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/e;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p3}, Lcom/avast/android/mobilesecurity/app/account/g;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/internet/c/a/av;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/account/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method
