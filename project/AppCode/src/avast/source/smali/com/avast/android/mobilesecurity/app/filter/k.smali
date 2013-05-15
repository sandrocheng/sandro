.class Lcom/avast/android/mobilesecurity/app/filter/k;
.super Ljava/lang/Object;
.source "FilterGroupDetailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/d/a;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;Lcom/avast/android/generic/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/k;->b:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/k;->a:Lcom/avast/android/generic/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/k;->a:Lcom/avast/android/generic/d/a;

    const-string v1, "name"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    return-void
.end method
