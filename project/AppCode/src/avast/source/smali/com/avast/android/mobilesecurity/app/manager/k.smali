.class Lcom/avast/android/mobilesecurity/app/manager/k;
.super Ljava/lang/Object;
.source "ManagerAppFragment.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/h;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/manager/j;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/j;Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/k;->b:Lcom/avast/android/mobilesecurity/app/manager/j;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/manager/k;->a:Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/k;->b:Lcom/avast/android/mobilesecurity/app/manager/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/j;->notifyDataSetChanged()V

    .line 462
    const-string v0, "AppsListAdapter.cacheUpdated()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 463
    return-void
.end method
