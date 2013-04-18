.class final Lcom/keniu/security/main/ay;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/keniu/security/main/ay;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/keniu/security/main/ay;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->w(Lcom/keniu/security/main/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/main/bl;

    iget-object v2, p0, Lcom/keniu/security/main/ay;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {v1, v2}, Lcom/keniu/security/main/bl;-><init>(Lcom/keniu/security/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2241
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 2244
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 2236
    return-void
.end method
