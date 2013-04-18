.class public Lcom/jxphone/mosecurity/b/e;
.super Lcom/jxphone/mosecurity/b/a/b;
.source "SmsIterator.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/b/a/b;-><init>(Landroid/database/Cursor;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/jxphone/mosecurity/c/l;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/e;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/e;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/b/e;->a()Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method
