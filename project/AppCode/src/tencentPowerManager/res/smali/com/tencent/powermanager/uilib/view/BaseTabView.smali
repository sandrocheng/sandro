.class public abstract Lcom/tencent/powermanager/uilib/view/BaseTabView;
.super Landroid/widget/LinearLayout;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->b:Z

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->b:Z

    return v0
.end method

.method public d()V
    .locals 5

    const-class v1, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->g()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->a:Landroid/content/Context;

    return-void
.end method

.method public abstract g()I
.end method

.method public abstract h()V
.end method

.method public setmCreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/view/BaseTabView;->b:Z

    return-void
.end method
