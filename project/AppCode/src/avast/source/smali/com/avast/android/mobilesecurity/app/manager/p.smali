.class Lcom/avast/android/mobilesecurity/app/manager/p;
.super Ljava/lang/Object;
.source "ManagerPagerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;ILcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    iput p2, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->a:I

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->b:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 312
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 313
    :goto_0
    if-ge p2, v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    const-string v1, "ms-AppManager"

    const-string v2, "orderChangeByRightButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[I

    move-result-object v4

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 315
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->b:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    .line 316
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->j(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->l(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    .line 319
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->b:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    if-eq v0, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/p;->d:Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;->k(Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    goto :goto_1

    .line 312
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_2
    return-void
.end method
