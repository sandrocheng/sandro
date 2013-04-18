.class final Lcom/ijinshan/kinghelper/a/g;
.super Landroid/os/Handler;
.source "GetDrawable.java"


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ijinshan/kinghelper/a/f;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/a/f;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ijinshan/kinghelper/a/g;->c:Lcom/ijinshan/kinghelper/a/f;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/a/g;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/a/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/g;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/a/g;->a:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/g;->c:Lcom/ijinshan/kinghelper/a/f;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/f;->a(Lcom/ijinshan/kinghelper/a/f;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/a/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
