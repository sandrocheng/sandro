.class Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;

    if-nez v0, :cond_2

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;

    invoke-direct {v3, p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;)V

    const v0, 0x7f080317

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;->tagAccount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object v4, v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;->tagAccount:Landroid/widget/TextView;

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;->tagAccount:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    iget-object v4, v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;->tagAccount:Landroid/widget/TextView;

    const v5, 0x7f02021d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$MyListAdapter$DataHolder;->tagAccount:Landroid/widget/TextView;

    const v5, 0x7f020220

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method
