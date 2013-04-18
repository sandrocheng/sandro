.class final Lcom/keniu/security/software/ai;
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
    .line 1392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/software/ai;-><init>(Lcom/keniu/security/software/SoftwareManager2;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/software/SoftwareManager2;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/keniu/security/software/ai;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/software/o;Lcom/keniu/security/software/o;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/keniu/security/software/ai;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->E(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    invoke-virtual {p1, p2}, Lcom/keniu/security/software/o;->a(Lcom/keniu/security/software/o;)I

    move-result v0

    .line 1403
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/keniu/security/software/o;->a(Lcom/keniu/security/software/o;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1392
    check-cast p1, Lcom/keniu/security/software/o;

    check-cast p2, Lcom/keniu/security/software/o;

    iget-object v0, p0, Lcom/keniu/security/software/ai;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->E(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/keniu/security/software/o;->a(Lcom/keniu/security/software/o;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/keniu/security/software/o;->a(Lcom/keniu/security/software/o;)I

    move-result v0

    goto :goto_0
.end method
