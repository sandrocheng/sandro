.class final Lcom/keniu/security/software/ah;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 1
    .parameter

    .prologue
    .line 1426
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/software/ah;-><init>(Lcom/keniu/security/software/SoftwareManager2;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/software/SoftwareManager2;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/keniu/security/software/ah;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/software/o;Lcom/keniu/security/software/o;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/keniu/security/software/ah;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->G(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    invoke-virtual {p1}, Lcom/keniu/security/software/o;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1436
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->d()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1426
    check-cast p1, Lcom/keniu/security/software/o;

    check-cast p2, Lcom/keniu/security/software/o;

    iget-object v0, p0, Lcom/keniu/security/software/ah;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->G(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->d()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method