.class public abstract Lcom/jxphone/mosecurity/b/a/b;
.super Ljava/lang/Object;
.source "CursorIterator.java"

# interfaces
.implements Lcom/jxphone/mosecurity/b/a/a;


# instance fields
.field protected a:Landroid/database/Cursor;

.field private final b:I


# direct methods
.method protected constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jxphone/mosecurity/b/a/b;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move v0, v2

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/b/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/jxphone/mosecurity/b/a/b;->b:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
