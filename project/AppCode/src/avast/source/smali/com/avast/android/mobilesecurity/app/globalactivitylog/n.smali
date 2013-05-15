.class Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActivityLogFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/util/Set;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "position"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 98
    const-string v0, "value"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)[Z

    move-result-object v0

    aput-boolean v4, v0, v3

    .line 101
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a()V

    .line 102
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;

    const-string v1, "ms-ActivityLog"

    const-string v2, "filter changed"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    return-void

    .line 105
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method
