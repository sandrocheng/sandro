.class public Lcom/avast/android/generic/service/SettingChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "SettingChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "-DEL-"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "-NULL-"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 118
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 120
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 121
    :cond_4
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 122
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 123
    :cond_5
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 124
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 125
    :cond_6
    instance-of v0, p3, [B

    if-eqz v0, :cond_0

    .line 126
    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p1, p2, p3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Landroid/os/Bundle;Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v0, "com.avast.android.generic.action.ACTION_SUITE_SETTINGS_COMMIT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    const-string v0, "Received key change event from other component"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.avast.android.generic.action.PROPERTY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "sourcePackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 41
    const-string v0, "com.avast.android.generic.action.SHARE_SETTINGS"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    const-string v2, "com.avast.android.generic.action.SHARE_SETTINGS"

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    const-string v2, "sourcePackage"

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-class v0, Lcom/avast/android/generic/a/a;

    invoke-static {v1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/a/a;

    .line 54
    invoke-interface {v0, v3}, Lcom/avast/android/generic/a/a;->a(Z)V

    .line 57
    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {v1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/ae;

    .line 62
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {v1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avast/android/generic/ae;

    .line 65
    invoke-virtual {v2}, Lcom/avast/android/generic/ae;->u()Z

    move-result v7

    .line 67
    const-string v0, "KEY CHANGE START"

    invoke-static {v1, v6, v0}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    const-string v9, "c2dmowner"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "c2dmri"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    :cond_3
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v3, v0, v9, v6}, Lcom/avast/android/generic/service/SettingChangeListener;->a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v2, v0, v9, v6}, Lcom/avast/android/generic/service/SettingChangeListener;->a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_5
    const-string v0, "KEY CHANGE END"

    invoke-static {v1, v6, v0}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lcom/avast/android/generic/ae;->b()Z

    .line 83
    invoke-virtual {v2}, Lcom/avast/android/generic/ae;->b()Z

    .line 85
    invoke-virtual {v2}, Lcom/avast/android/generic/ae;->u()Z

    move-result v0

    .line 86
    if-nez v7, :cond_6

    if-eqz v0, :cond_6

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    const-string v7, "com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_6
    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/avast/android/generic/service/SettingChangeListener;->a(Landroid/content/Context;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Landroid/os/Bundle;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0
.end method
