.class public Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field public mCheck:Z

.field public mImage:I

.field public mSpannable:Z

.field public mSummary:Ljava/lang/String;

.field public mTextColor:I

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    iput p5, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b:I

    iput p2, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    iput-boolean p4, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSpannable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    iput p3, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    iput v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b:I

    iput v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSpannable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    iput p3, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    iput p4, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSpannable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    iput p3, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    iput-boolean p4, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mCheck:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->a:Z

    iput v1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b:I

    iput v1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSpannable:Z

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->a:Z

    return v0
.end method

.method static synthetic b(Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b:I

    return v0
.end method


# virtual methods
.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    return-void
.end method
