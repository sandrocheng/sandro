.class public abstract Lcom/keniu/security/importx/k;
.super Landroid/widget/BaseAdapter;
.source "ContactListAdapter.java"

# interfaces
.implements Lcom/keniu/security/importx/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/keniu/security/importx/k;->getCount()I

    move-result v0

    .line 17
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lcom/keniu/security/importx/k;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 22
    return-void
.end method

.method public d(I)Lcom/keniu/security/commumgr/a/t;
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
