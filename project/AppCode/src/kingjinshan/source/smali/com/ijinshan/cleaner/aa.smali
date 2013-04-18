.class final Lcom/ijinshan/cleaner/aa;
.super Ljava/lang/Object;
.source "MainCleanActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/MainCleanActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/MainCleanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ijinshan/cleaner/aa;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ijinshan/cleaner/aa;->a:Lcom/ijinshan/cleaner/MainCleanActivity;

    invoke-static {v0}, Lcom/ijinshan/cleaner/MainCleanActivity;->b(Lcom/ijinshan/cleaner/MainCleanActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
