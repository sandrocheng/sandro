.class final Lcom/keniu/security/sync/ui/ai;
.super Landroid/widget/BaseAdapter;
.source "SyncRecordsAct.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ai;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/ai;->b:Landroid/view/LayoutInflater;

    .line 124
    return-void
.end method

.method private a(I)Lcom/keniu/security/sync/HistoryRecord;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ai;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/HistoryRecord;

    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ai;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/ai;->a(I)Lcom/keniu/security/sync/HistoryRecord;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ai;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/keniu/security/sync/ui/aj;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/aj;-><init>(Lcom/keniu/security/sync/ui/ai;)V

    .line 144
    const v0, 0x7f080086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/sync/ui/aj;->a:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f08025b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/sync/ui/aj;->b:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f08025a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/sync/ui/aj;->c:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 152
    :goto_0
    iget-object v2, v0, Lcom/keniu/security/sync/ui/aj;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/ai;->a(I)Lcom/keniu/security/sync/HistoryRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/sync/HistoryRecord;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/ai;->a(I)Lcom/keniu/security/sync/HistoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/HistoryRecord;->b()Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    .line 155
    :goto_1
    iget-object v3, v0, Lcom/keniu/security/sync/ui/aj;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, v0, Lcom/keniu/security/sync/ui/aj;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/keniu/security/sync/ui/ai;->a(I)Lcom/keniu/security/sync/HistoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/HistoryRecord;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/ui/aj;

    move-object v1, p2

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/ui/ai;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    const-string v4, "contact"

    iget-object v5, p0, Lcom/keniu/security/sync/ui/ai;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v5}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->d(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0b08d2

    :goto_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const v4, 0x7f0b08d3

    goto :goto_2
.end method
