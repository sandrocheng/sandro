.class public Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "FilterSmsPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;-><init>()V

    return-object v0
.end method
