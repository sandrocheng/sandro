.class Lcom/avast/android/generic/ui/widget/j;
.super Ljava/lang/Object;
.source "NextRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/NextRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/NextRow;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Lcom/avast/android/generic/ui/widget/NextRow;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/NextRow;->b(Lcom/avast/android/generic/ui/widget/NextRow;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Lcom/avast/android/generic/ui/widget/NextRow;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/NextRow;->b(Lcom/avast/android/generic/ui/widget/NextRow;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 121
    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v2}, Lcom/avast/android/generic/ui/widget/NextRow;->c(Lcom/avast/android/generic/ui/widget/NextRow;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v3, "layoutId"

    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v4}, Lcom/avast/android/generic/ui/widget/NextRow;->c(Lcom/avast/android/generic/ui/widget/NextRow;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    :cond_0
    sget v2, Lcom/avast/android/generic/t;->aK:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "AvastGeneric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot open fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/j;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-static {v3}, Lcom/avast/android/generic/ui/widget/NextRow;->b(Lcom/avast/android/generic/ui/widget/NextRow;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
