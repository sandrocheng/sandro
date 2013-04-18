.class public Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;
.super Lcom/ijinshan/kpref/PreferenceActivity;
.source "FirewallSettingsBlockActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# static fields
.field public static final a:Ljava/lang/String; = "67"

.field public static final b:Ljava/lang/String; = "90"

.field private static final d:Ljava/lang/String; = "tel:%23%2367%23"

.field private static final e:Ljava/lang/String; = "tel:**67*13800000000%23"

.field private static final f:Ljava/lang/String; = "tel:**67*13693164946%23"

.field private static final g:Ljava/lang/String; = "tel:**67*13810244514%23"

.field private static final h:Ljava/lang/String; = "tel:*43%23"

.field private static final i:Ljava/lang/String; = "tel:%2343%23"

.field private static final j:Ljava/lang/String; = "tel:*900"

.field private static final k:Ljava/lang/String; = "tel:*6813800000000"

.field private static final l:Ljava/lang/String; = "tel:*9013810538911"

.field private static final m:Ljava/lang/String; = "tel:*9013810244514"

.field private static final n:Ljava/lang/String; = "tel:*74"

.field private static final o:Ljava/lang/String; = "tel:*740"

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x3


# instance fields
.field private c:Z

.field private final s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/de;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    if-eqz v1, :cond_3

    .line 180
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_0

    .line 181
    const-string v1, "tel:*74"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_1

    .line 185
    const-string v1, "tel:*74"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    :cond_1
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_2

    .line 189
    const-string v1, "tel:*74"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, "tel:*900"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :cond_3
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_4

    .line 199
    const-string v1, "tel:*43%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 202
    :cond_4
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_5

    .line 203
    const-string v1, "tel:*43%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 206
    :cond_5
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v1, p1, :cond_6

    .line 207
    const-string v1, "tel:*43%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    :cond_6
    const-string v1, "tel:%23%2367%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    if-eqz v1, :cond_3

    .line 146
    if-ne v4, p1, :cond_1

    .line 147
    const-string v1, "tel:*9013810244514"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-ne v2, p1, :cond_2

    .line 151
    const-string v1, "tel:*6813800000000"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_2
    if-ne v3, p1, :cond_0

    .line 155
    const-string v1, "tel:*9013810538911"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :cond_3
    if-ne v4, p1, :cond_4

    .line 161
    const-string v1, "tel:**67*13810244514%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_4
    if-ne v2, p1, :cond_5

    .line 165
    const-string v1, "tel:**67*13800000000%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_5
    if-ne v3, p1, :cond_0

    .line 169
    const-string v1, "tel:**67*13693164946%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/de;->values()[Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    .line 96
    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/de;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 98
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->i()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v1

    .line 101
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 102
    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/de;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/de;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0, v5}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 108
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    goto :goto_2

    .line 111
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 116
    check-cast p1, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 117
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/de;->b(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v1

    .line 119
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_0

    const-string v2, "tel:*74"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 121
    invoke-virtual {p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :goto_2
    return v5

    .line 119
    :cond_0
    :try_start_1
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_1

    const-string v2, "tel:*74"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_2

    const-string v2, "tel:*74"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string v2, "tel:*900"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_4

    const-string v2, "tel:*43%23"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_5

    const-string v2, "tel:*43%23"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    if-ne v2, v1, :cond_6

    const-string v2, "tel:*43%23"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "tel:%23%2367%23"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 124
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto/16 :goto_1

    .line 127
    :cond_8
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Lcom/ijinshan/kinghelper/firewall/de;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    if-eqz v1, :cond_3

    if-ne v4, p1, :cond_1

    const-string v1, "tel:*9013810244514"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/ijinshan/kpref/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    return-void

    .line 138
    :cond_1
    if-ne v2, p1, :cond_2

    const-string v1, "tel:*6813800000000"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne v3, p1, :cond_0

    const-string v1, "tel:*9013810538911"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-ne v4, p1, :cond_4

    const-string v1, "tel:**67*13810244514%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-ne v2, p1, :cond_5

    const-string v1, "tel:**67*13800000000%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    if-ne v3, p1, :cond_0

    const-string v1, "tel:**67*13693164946%23"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-boolean v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->c:Z

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->a()V

    .line 80
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->setContentView(I)V

    .line 81
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->a(I)V

    .line 82
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/de;->values()[Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/de;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->i()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/de;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/de;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v5}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    goto :goto_2

    .line 83
    :cond_5
    if-nez p1, :cond_6

    .line 84
    const-string v0, "sao_set"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_6
    return-void
.end method
