.class public final Lcom/keniu/security/traffic/x;
.super Ljava/lang/Object;
.source "TrafficApk.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/x;->a:I

    .line 13
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/keniu/security/traffic/x;->a:I

    .line 17
    iput-object p2, p0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/keniu/security/traffic/x;

    .line 28
    iget v0, p0, Lcom/keniu/security/traffic/x;->a:I

    iget v1, p1, Lcom/keniu/security/traffic/x;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/traffic/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/keniu/security/traffic/x;->a:I

    return v0
.end method
