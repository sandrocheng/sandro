.class Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

.field final synthetic val$listener:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;->val$listener:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;->val$listener:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;->onCheckBoxClick(Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;)V

    return-void
.end method
