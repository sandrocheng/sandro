.class public Lcom/hoi/antivirus/AntiVirusFunc;
.super Ljava/lang/Object;
.source "AntiVirusFunc.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "syscore"

    invoke-static {v0}, Lcom/keniu/security/h/a;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/hoi/antivirus/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/hoi/antivirus/AntiVirusFunc;->avEngineCheckFilePrivate(Ljava/lang/String;I)[B

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/hoi/antivirus/a;->a([B)Lcom/hoi/antivirus/a;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/hoi/antivirus/AntiVirusFunc;

    invoke-direct {v0}, Lcom/hoi/antivirus/AntiVirusFunc;-><init>()V

    const-string v1, "/sdcard/test.apk"

    invoke-direct {v0, v1}, Lcom/hoi/antivirus/AntiVirusFunc;->calchash(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    return-void
.end method

.method private native calchash(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hoi/antivirus/AntiVirusFunc;->calchash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public native avEngineCheckFile(Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public native avEngineCheckFilePrivate(Ljava/lang/String;I)[B
.end method

.method public native avEngineClose(I)I
.end method

.method public native avEngineLoad(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native calchashCk(Ljava/lang/String;)Ljava/lang/String;
.end method
