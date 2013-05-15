.class Lcom/avast/android/generic/ui/h;
.super Ljava/lang/Object;
.source "CheckerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/CheckerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/CheckerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/avast/android/generic/ui/h;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/avast/android/generic/ui/h;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    const-string v1, "checker"

    const-string v2, "cancel"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/ui/h;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 118
    return-void
.end method
