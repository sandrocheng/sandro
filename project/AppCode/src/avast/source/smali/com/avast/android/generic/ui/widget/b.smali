.class Lcom/avast/android/generic/ui/widget/b;
.super Ljava/lang/Object;
.source "CheckBoxRow.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Z)Z

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Lcom/avast/android/generic/ui/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Lcom/avast/android/generic/ui/widget/CheckBoxRow;)Lcom/avast/android/generic/ui/widget/c;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/b;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-interface {v0, v1, p2}, Lcom/avast/android/generic/ui/widget/c;->a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V

    goto :goto_0
.end method
