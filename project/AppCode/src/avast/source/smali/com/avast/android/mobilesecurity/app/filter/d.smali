.class Lcom/avast/android/mobilesecurity/app/filter/d;
.super Ljava/lang/Object;
.source "FilterContactsFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/d;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const v3, 0x7f070021

    if-ne v0, v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/d;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;Ljava/lang/String;Z)V

    .line 90
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method
