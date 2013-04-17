.class public abstract Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final Type_BaseButton:B = 0x6t

.field public static final Type_CheckBox:B = 0x2t

.field public static final Type_CheckBox_Title:B = 0x7t

.field public static final Type_CheckBox_white:B = 0xat

.field public static final Type_Dialog:B = 0x4t

.field public static final Type_Expand:B = 0x9t

.field public static final Type_List:B = 0x3t

.field public static final Type_Preference:B = 0x1t

.field public static final Type_Preference_white:B = 0xbt

.field public static final Type_RadioButton:B = 0x8t

.field public static final Type_SimpleButton:B = 0xct

.field public static final Type_Title:B = 0x5t


# instance fields
.field private key:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mDrawable_default:Landroid/graphics/drawable/Drawable;

.field protected mDrawable_disable:Landroid/graphics/drawable/Drawable;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->onCreateView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->key:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mDrawable_default:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mDrawable_disable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->onCreateView()V

    return-void
.end method

.method private onCreateView()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->createMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected abstract createMainView()Landroid/view/View;
.end method

.method public doClickEvent()V
    .locals 0

    return-void
.end method

.method public abstract doClickEvent(II)V
.end method

.method public abstract doClickEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getKey()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->key:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected abstract onBindView(Landroid/view/View;)V
.end method

.method public setBackgroudDisable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mDrawable_disable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mDrawable_default:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemMinHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setKey(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;->key:Ljava/lang/CharSequence;

    return-void
.end method
