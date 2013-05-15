.class Lcom/avast/android/mobilesecurity/app/filter/p;
.super Ljava/lang/Object;
.source "FilterLogsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/p;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/p;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->b(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)Lcom/avast/android/generic/util/x;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/p;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->a(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/util/x;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    return-void
.end method
