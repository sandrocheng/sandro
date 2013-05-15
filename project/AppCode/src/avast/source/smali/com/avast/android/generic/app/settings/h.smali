.class Lcom/avast/android/generic/app/settings/h;
.super Ljava/lang/Object;
.source "SetRecoveryNumberDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/h;->b:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    iput-boolean p2, p0, Lcom/avast/android/generic/app/settings/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/avast/android/generic/app/settings/h;->a:Z

    if-nez v0, :cond_0

    .line 117
    add-int/lit8 p3, p3, 0x1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/h;->b:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v0, p3}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;I)V

    .line 120
    return-void
.end method
