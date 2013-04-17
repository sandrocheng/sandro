.class public final Larb;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030068

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Larb;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larb;->d:Ljava/util/List;

    iput-object p1, p0, Larb;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Larb;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Larb;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Larb;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic c(Larb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Larb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Larb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Larb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Larb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larb;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 3

    const v2, 0x7f0201a5

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Larb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Larb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Larb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;

    iput-object v0, p0, Larb;->e:Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;

    iget-object v0, p0, Larb;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Larb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Larb;->e:Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberManager;->getAllYellowNumbersWithGroup()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Larb;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;

    iget-object v1, p0, Larb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Larb;->c:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v0, p0, Larb;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Larb;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DialCommonPhoneExAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Larc;

    invoke-direct {v1, p0}, Larc;-><init>(Larb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Larb;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lard;

    invoke-direct {v1, p0}, Lard;-><init>(Larb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    iget-wide v1, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v3, p0, Larb;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v5, p0, Larb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b043b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v5, p0, Larb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b043c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v5, 0x3

    iput v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v5, p0, Larb;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b043d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v5, 0x4

    iput v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v3, Lare;

    invoke-direct {v3, p0, v2, v0, v1}, Lare;-><init>(Larb;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;II)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Larb;->c:Ljava/util/HashMap;

    iget-object v4, p0, Larb;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f0b008b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
