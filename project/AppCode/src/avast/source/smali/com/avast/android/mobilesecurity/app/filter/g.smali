.class Lcom/avast/android/mobilesecurity/app/filter/g;
.super Ljava/lang/Object;
.source "FilterContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/g;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;

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
    .line 544
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/g;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->dismiss()V

    .line 545
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/g;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-static {v0, p3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;I)V

    .line 546
    return-void
.end method
