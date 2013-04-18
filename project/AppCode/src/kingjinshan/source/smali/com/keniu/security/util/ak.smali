.class final Lcom/keniu/security/util/ak;
.super Landroid/widget/CursorAdapter;
.source "MyAlertController.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

.field final synthetic b:Lcom/keniu/security/util/ai;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/keniu/security/util/ai;Landroid/content/Context;Landroid/database/Cursor;Lcom/keniu/security/util/MyAlertController$RecycleListView;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/keniu/security/util/ak;->b:Lcom/keniu/security/util/ai;

    iput-object p4, p0, Lcom/keniu/security/util/ak;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 866
    invoke-virtual {p0}, Lcom/keniu/security/util/ak;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/keniu/security/util/ak;->b:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/util/ak;->c:I

    .line 869
    iget-object v1, p0, Lcom/keniu/security/util/ak;->b:Lcom/keniu/security/util/ai;

    iget-object v1, v1, Lcom/keniu/security/util/ai;->J:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/util/ak;->d:I

    .line 871
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 876
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 878
    iget v1, p0, Lcom/keniu/security/util/ak;->c:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/keniu/security/util/ak;->a:Lcom/keniu/security/util/MyAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/keniu/security/util/ak;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/MyAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 881
    return-void

    .line 879
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/keniu/security/util/ak;->b:Lcom/keniu/security/util/ai;

    iget-object v0, v0, Lcom/keniu/security/util/ai;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
