.class final Lcom/keniu/security/traffic/az;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 747
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 827
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 756
    const v1, 0x7f03010a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 759
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 761
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const v2, 0x1030056

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 764
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 765
    iget-object v0, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x46

    .line 766
    iget-object v2, p0, Lcom/keniu/security/traffic/az;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->l(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, p1, v3, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 768
    const v0, 0x7f0803c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 771
    invoke-static {}, Lcom/keniu/security/h/b;->a()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/keniu/security/h/b;->a:Z

    if-nez v2, :cond_2

    .line 772
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    new-instance v2, Lcom/keniu/security/traffic/ba;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/ba;-><init>(Lcom/keniu/security/traffic/az;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    :goto_1
    const v0, 0x7f0803c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/traffic/bb;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/bb;-><init>(Lcom/keniu/security/traffic/az;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 799
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
