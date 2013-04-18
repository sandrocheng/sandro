.class public Lcom/keniu/security/sync/ui/SyncMainActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SyncMainActivity.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/SimpleAdapter;

.field private h:Lcom/keniu/security/sync/d;

.field private i:Lcom/keniu/security/sync/k;

.field private final j:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/keniu/security/sync/ui/ac;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/ac;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 217
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->h:Lcom/keniu/security/sync/d;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v1

    .line 130
    return v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/SyncMainActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v1

    .line 144
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    .line 145
    array-length v1, v1

    .line 146
    add-int/2addr v0, v1

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b087e

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b087f

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020113

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0880

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0881

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08c5

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08c6

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d5

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08d6

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncLocalAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0884

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "VMAP_ITEM_DESC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b08c2

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_0
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void

    .line 200
    :cond_0
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0885

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const v0, 0x7f03008b

    const v1, 0x7f0b087d

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 59
    if-nez p1, :cond_0

    .line 61
    const-string v0, "sync"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    .line 64
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 65
    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->b:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    const v0, 0x7f080256

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->c:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f080257

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->d:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->e:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f080259

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->f:Landroid/widget/TextView;

    .line 72
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 73
    new-instance v0, Lcom/keniu/security/sync/f;

    invoke-direct {v0}, Lcom/keniu/security/sync/f;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->h:Lcom/keniu/security/sync/d;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->h:Lcom/keniu/security/sync/d;

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d;->a(Landroid/content/ContentResolver;)V

    .line 79
    return-void

    .line 75
    :cond_1
    new-instance v0, Lcom/keniu/security/sync/e;

    invoke-direct {v0}, Lcom/keniu/security/sync/e;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->h:Lcom/keniu/security/sync/d;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    const-string v0, ">>>>> on destroy"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v1, "auto_status"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-static {v2}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/keniu/security/sync/y;->c(I)Z

    .line 213
    :cond_1
    invoke-static {v3}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/keniu/security/sync/y;->c(I)Z

    .line 214
    :cond_2
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 118
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onResume()V

    .line 119
    return-void
.end method

.method public onStart()V
    .locals 14

    .prologue
    const/4 v8, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStart()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b087e

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b087f

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020113

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0880

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0881

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08c5

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08c6

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncRestoreHistoryAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f020110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b08d5

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b08d6

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/SyncLocalAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "VMAP_ITEM_IMAGE"

    const v2, 0x7f02010c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VMAP_ITEM_TITLE"

    const v2, 0x7f0b0884

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VMAP_ITEM_DESC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b08c2

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "VMAP_ITEM_CLASS"

    new-instance v2, Lcom/keniu/security/sync/ui/ad;

    const-class v3, Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/sync/ui/ad;-><init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->a:Ljava/util/List;

    const v3, 0x7f03008c

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "VMAP_ITEM_IMAGE"

    aput-object v1, v4, v10

    const-string v1, "VMAP_ITEM_TITLE"

    aput-object v1, v4, v11

    const-string v1, "VMAP_ITEM_DESC"

    aput-object v1, v4, v12

    const/4 v1, 0x3

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->g:Landroid/widget/SimpleAdapter;

    .line 90
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->g:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->b:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/keniu/security/sync/l;->a(Landroid/widget/ListView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const v1, 0x7f0b087c

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const v1, 0x7f0b087a

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->d(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-ne v0, v8, :cond_2

    move v7, v10

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->i:Lcom/keniu/security/sync/k;

    const v1, 0x7f0b087b

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->d(Ljava/lang/String;)I

    move-result v0

    .line 100
    if-ne v0, v8, :cond_3

    move v8, v10

    .line 101
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->h:Lcom/keniu/security/sync/d;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v9, v1

    .line 102
    :goto_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v2, v13

    move-object v3, v13

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_5
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 103
    const-string v1, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b0886

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_6
    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0b0888

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f0b0889

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {p0, v2, v3}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    if-gt v9, v7, :cond_0

    if-le v0, v8, :cond_5

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_7
    return-void

    .line 85
    :cond_1
    const-string v1, "VMAP_ITEM_DESC"

    const v2, 0x7f0b0885

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set list view height baseed on children fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v7, v0

    .line 98
    goto/16 :goto_2

    :cond_3
    move v8, v0

    .line 100
    goto/16 :goto_3

    .line 103
    :cond_4
    const v1, 0x7f0b0887

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/keniu/security/sync/ui/SyncMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncMainActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_6
    move v0, v10

    goto/16 :goto_5

    :cond_7
    move v9, v10

    goto/16 :goto_4

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x31t 0x1t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x4dt 0x2t 0x8t 0x7ft
    .end array-data
.end method
