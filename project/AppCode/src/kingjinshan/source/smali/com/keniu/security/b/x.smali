.class final Lcom/keniu/security/b/x;
.super Lcom/jxphone/mosecurity/b/e;
.source "SystemSmsDaoImpl.java"


# direct methods
.method synthetic constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/b/x;-><init>(Landroid/database/Cursor;B)V

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/e;-><init>(Landroid/database/Cursor;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final a()Lcom/jxphone/mosecurity/c/l;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/keniu/security/b/x;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/b/x;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/keniu/security/b/v;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/keniu/security/b/x;->a()Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method
