.class Lcom/avast/android/mobilesecurity/app/manager/i;
.super Ljava/lang/Object;
.source "ManagerAppFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/i;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    if-eqz p2, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0700e1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/i;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    .line 185
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0700e2

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/i;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0700e3

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/i;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    .line 191
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0700e4

    if-ne v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/i;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(I)V

    .line 195
    :cond_3
    return-void
.end method
