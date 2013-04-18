.class final Lcom/keniu/security/f/ad;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/f/ad;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 826
    const-string v0, "apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    .line 828
    :cond_0
    const-string v0, "binary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 829
    const/4 v0, 0x2

    goto :goto_0

    .line 830
    :cond_1
    const-string v0, "sqlite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 831
    const/4 v0, 0x3

    goto :goto_0

    .line 833
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 813
    const-string v0, "type"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/keniu/security/f/ad;->a:I

    .line 814
    const-string v0, "path_data"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/ad;->b:Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/keniu/security/f/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string v0, "path_res"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/ad;->b:Ljava/lang/String;

    .line 822
    :cond_0
    const-string v0, "description"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/ad;->c:Ljava/lang/String;

    .line 823
    return-void

    .line 813
    :cond_1
    const-string v1, "binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "sqlite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
