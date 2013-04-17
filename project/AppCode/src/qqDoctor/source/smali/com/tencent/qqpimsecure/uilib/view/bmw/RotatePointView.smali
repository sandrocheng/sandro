.class public Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;
.super Landroid/widget/ImageView;


# instance fields
.field private animation:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

.field private prcess:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->prcess:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->animation:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->animation:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->addListener(Lcom/tencent/qqpimsecure/uilib/view/bmw/RotateTableView$ProcessChangeListener;)V

    return-void
.end method

.method public changeBMW(I)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->prcess:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->prcess:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->animation:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->prcess:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->resetAnimation(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->animation:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getPrcess()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/RotatePointView;->prcess:I

    return v0
.end method
