.class public final Lcs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->c(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->h()V

    iget-object v0, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0, p1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;I)I

    iget-object v0, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->e()V

    iget-object v0, p0, Lcs;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0, p1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;I)V

    return-void
.end method
