.class final Lcom/keniu/security/protection/ui/an;
.super Landroid/widget/BaseAdapter;
.source "PreventTheftWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/keniu/security/protection/ui/an;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/keniu/security/protection/ui/an;->b:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 187
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const-string v0, ""

    .line 196
    :goto_0
    return-object v0

    .line 189
    :cond_1
    const-string v0, "46000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_2
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "46001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "46006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    :cond_4
    const-string v0, "\u4e2d\u56fd\u8054\u901a\t"

    goto :goto_0

    .line 193
    :cond_5
    const-string v0, "46003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    :cond_6
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    .line 196
    :cond_7
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/an;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/util/ArrayList;)V

    .line 139
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/an;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public final b(I)Lcom/keniu/security/protection/ui/ao;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/protection/ui/ao;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-virtual {v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/keniu/security/protection/ui/am;

    iget-object v0, p0, Lcom/keniu/security/protection/ui/an;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-direct {v2, v0}, Lcom/keniu/security/protection/ui/am;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)V

    .line 165
    const v0, 0x7f08029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/protection/ui/am;->a:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f08029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/protection/ui/am;->b:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v0

    .line 176
    iget-object v3, v2, Lcom/keniu/security/protection/ui/am;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 178
    :cond_0
    iget-object v2, v2, Lcom/keniu/security/protection/ui/am;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_1
    return-object v1

    .line 178
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    goto :goto_0

    :cond_4
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "46006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v0, "\u4e2d\u56fd\u8054\u901a\t"

    goto :goto_0

    :cond_6
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "46005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    :cond_8
    const-string v0, ""

    goto :goto_0

    .line 180
    :cond_9
    iget-object v2, v2, Lcom/keniu/security/protection/ui/am;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method
