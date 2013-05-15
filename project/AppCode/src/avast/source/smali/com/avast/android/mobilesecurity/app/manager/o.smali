.class Lcom/avast/android/mobilesecurity/app/manager/o;
.super Ljava/lang/Object;
.source "ManagerPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/bk;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/n;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/n;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->g(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;

    move-result-object v0

    iput p1, v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;->a:I

    .line 209
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->h(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->j(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/o;->a:Lcom/avast/android/mobilesecurity/app/manager/n;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/n;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->i(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 225
    return-void
.end method
