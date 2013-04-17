.class public abstract Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static b:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field protected a:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d:Landroid/view/View;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d:Landroid/view/View;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c:Z

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->c:Z

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()I
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->f()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0xc369

    invoke-static {v0}, Lab;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080056
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
