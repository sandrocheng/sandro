.class Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;
.super Ljava/lang/Object;
.source "GlobalActivityLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->e(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->e(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)[Z

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;[Z)V

    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    const-string v1, "ms-ActivityLog"

    const-string v2, "filter opened"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    return-void
.end method
