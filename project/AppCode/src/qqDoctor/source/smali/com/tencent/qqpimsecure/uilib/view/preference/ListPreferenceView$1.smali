.class Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I
    invoke-static {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->mEntries:[Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->preferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->preferenceChangeListener:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->itemSelectIndex:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;->onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z

    :cond_1
    const v0, 0x7f08009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;)Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
