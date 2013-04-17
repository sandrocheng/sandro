.class public final Lcx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/uilib/CheckBoxView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/uilib/CheckBoxView;)V
    .locals 0

    iput-object p1, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Z)Z

    iget-object v0, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    iget-object v1, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Lcom/tencent/powermanager/uilib/CheckBoxView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    invoke-static {v2}, Lcom/tencent/powermanager/uilib/CheckBoxView;->b(Lcom/tencent/powermanager/uilib/CheckBoxView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Lcom/tencent/powermanager/uilib/CheckBoxView;Landroid/content/Context;I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcx;->a:Lcom/tencent/powermanager/uilib/CheckBoxView;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/CheckBoxView;->a(Z)Z

    return-void
.end method
