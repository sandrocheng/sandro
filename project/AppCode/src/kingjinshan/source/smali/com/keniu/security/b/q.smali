.class final Lcom/keniu/security/b/q;
.super Lcom/jxphone/mosecurity/b/a/b;
.source "SystemCallLogDaoImpl.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/a/b;-><init>(Landroid/database/Cursor;)V

    .line 176
    return-void
.end method

.method private a()Lcom/jxphone/mosecurity/c/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/keniu/security/b/p;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/b/q;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/keniu/security/b/p;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    goto :goto_0
.end method
