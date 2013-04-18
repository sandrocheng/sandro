.class public Lcom/keniu/security/sync/ui/SyncHistoryActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SyncHistoryActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "VMAP_ITEM_TIME"

.field private static final b:Ljava/lang/String; = "VMAP_ITEM_OPER"


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/SimpleAdapter;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/keniu/security/sync/ui/y;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/ui/y;-><init>(Lcom/keniu/security/sync/ui/SyncHistoryActivity;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v0, "SD\u5361\u6ca1\u6709\u51c6\u5907\u597d!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 105
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 106
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string v3, "VMAP_ITEM_TIME"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "VMAP_ITEM_OPER"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    :try_start_2
    new-instance v1, Lcom/keniu/security/sync/ui/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/z;-><init>(Lcom/keniu/security/sync/ui/SyncHistoryActivity;)V

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    if-eqz v0, :cond_0

    .line 124
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    goto :goto_0

    .line 122
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 124
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 126
    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 122
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 116
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 135
    const v1, 0x7f0b0441

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 136
    const v1, 0x7f0b08a4

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 137
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/sync/ui/aa;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/aa;-><init>(Lcom/keniu/security/sync/ui/SyncHistoryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 143
    const v1, 0x7f0b042e

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 144
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 145
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "SD\u5361\u6ca1\u6709\u51c6\u5907\u597d!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 162
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->onStart()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    const v0, 0x7f030089

    const v1, 0x7f0b0882

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 51
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->c:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->d:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->f:Landroid/widget/ListView;

    .line 57
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStart()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->e:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->d()V

    .line 73
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->f:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->e:Ljava/util/List;

    const v3, 0x7f03008a

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "VMAP_ITEM_TIME"

    aput-object v1, v4, v5

    const-string v1, "VMAP_ITEM_OPER"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->g:Landroid/widget/SimpleAdapter;

    .line 85
    iget-object v0, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->g:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 79
    nop

    :array_0
    .array-data 0x4
        0x53t 0x2t 0x8t 0x7ft
        0x54t 0x2t 0x8t 0x7ft
    .end array-data
.end method
