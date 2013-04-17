.class Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceHolder"
.end annotation


# instance fields
.field public buttonView:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field public checkBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field public imageView:Landroid/widget/ImageView;

.field public lineView:Landroid/widget/LinearLayout;

.field public summaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;->this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter$PreferenceHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;)V

    return-void
.end method
