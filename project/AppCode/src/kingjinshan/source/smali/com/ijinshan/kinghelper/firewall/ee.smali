.class final Lcom/ijinshan/kinghelper/firewall/ee;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;
    .locals 1
    .parameter

    .prologue
    .line 415
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;
    .locals 1
    .parameter

    .prologue
    .line 420
    new-array v0, p0, [Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 412
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    invoke-direct {v0, p1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 412
    new-array v0, p1, [Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    return-object v0
.end method
