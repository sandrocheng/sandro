.class public final Lao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lao$a;,
        Lao$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/Object;

.field private static d:Lao;

.field private static synthetic e:[I


# instance fields
.field private a:Lan;

.field private b:Lao$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lao;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lao;->d:Lao;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lao$a;->b:Lao$a;

    iput-object v0, p0, Lao;->b:Lao$a;

    invoke-static {}, Lde;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lde;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xt800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lao$a;->a:Lao$a;

    iput-object v0, p0, Lao;->b:Lao$a;

    :cond_1
    invoke-static {}, Lao;->c()[I

    move-result-object v0

    iget-object v1, p0, Lao;->b:Lao$a;

    invoke-virtual {v1}, Lao$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    iput-object v0, p0, Lao;->a:Lan;

    :goto_1
    invoke-direct {p0}, Lao;->b()V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :pswitch_0
    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    iput-object v0, p0, Lao;->a:Lan;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lao;
    .locals 2

    sget-object v0, Lao;->d:Lao;

    if-eqz v0, :cond_0

    sget-object v0, Lao;->d:Lao;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lao;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lao;->d:Lao;

    if-nez v0, :cond_1

    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    sput-object v0, Lao;->d:Lao;

    :cond_1
    sget-object v0, Lao;->d:Lao;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(I)Lao$b;
    .locals 3

    iget-object v0, p0, Lao;->a:Lan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lao$b;->c:Lao$b;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lao;->a:Lan;

    sget-object v1, Lde;->b:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lan;->a(Landroid/content/Context;I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v0, Lao$b;->b:Lao$b;

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v0

    if-ne v1, v0, :cond_3

    sget-object v0, Lao$b;->a:Lao$b;

    goto :goto_1

    :cond_3
    sget-object v0, Lao$b;->c:Lao$b;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    sget-object v0, Lao$b;->c:Lao$b;

    goto :goto_1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Ldc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lao;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lao;->b(I)Lao$b;

    move-result-object v2

    sget-object v3, Lao$b;->b:Lao$b;

    if-eq v2, v3, :cond_2

    sget-object v2, Lao$b;->a:Lao$b;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private c(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lao;->a:Lan;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lao;->a:Lan;

    sget-object v2, Lde;->b:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lan;->a(Landroid/content/Context;I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method private static synthetic c()[I
    .locals 3

    sget-object v0, Lao;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lao$a;->values()[Lao$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lao$a;->a:Lao$a;

    invoke-virtual {v1}, Lao$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lao$a;->b:Lao$a;

    invoke-virtual {v1}, Lao$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lao;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/android/internal/telephony/ISms;
    .locals 2

    iget-object v0, p0, Lao;->a:Lan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lao;->a:Lan;

    sget-object v1, Lde;->b:Landroid/content/Context;

    invoke-interface {v0, p1}, Lan;->a(I)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    goto :goto_0
.end method
