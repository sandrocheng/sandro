.class public Lcom/antivirus/antitheft/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread;

.field private c:Z

.field private d:Lcom/antivirus/core/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/antitheft/ab;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/antivirus/antitheft/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/antitheft/ab;->c:Z

    return v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/antivirus/core/f/d;

    invoke-direct {v1}, Lcom/antivirus/core/f/d;-><init>()V

    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/f/d;->a(Landroid/content/Context;)Z

    invoke-virtual {v1}, Lcom/antivirus/core/f/d;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/b;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/antivirus/core/f/d;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    invoke-virtual {v1}, Lcom/antivirus/core/b;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->a:Landroid/content/Context;

    const/16 v1, 0xfa0

    const/16 v2, 0x232f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/antivirus/antitheft/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/antitheft/ab;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/antitheft/ab;->c:Z

    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/antivirus/core/b;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/antitheft/ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/antivirus/antitheft/ab;->d:Lcom/antivirus/core/b;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/antivirus/antitheft/ac;

    invoke-direct {v1, p0}, Lcom/antivirus/antitheft/ac;-><init>(Lcom/antivirus/antitheft/ab;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/antivirus/antitheft/ab;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/antivirus/antitheft/ab;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
