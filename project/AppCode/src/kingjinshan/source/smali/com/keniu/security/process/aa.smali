.class final Lcom/keniu/security/process/aa;
.super Ljava/lang/Object;
.source "ProcessWhiteSettingActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/z;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/z;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/keniu/security/process/aa;->a:Lcom/keniu/security/process/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/keniu/security/d/e;Lcom/keniu/security/d/e;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, -0x1

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    check-cast p1, Lcom/keniu/security/d/e;

    check-cast p2, Lcom/keniu/security/d/e;

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
